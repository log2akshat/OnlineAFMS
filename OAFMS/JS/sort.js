/*
SortableTable allows multi-column sorting and row selection.
Copyright 2008  White Magic Software, Ltd.
http://www.whitemagicsoftware.com/software/javascript/multicolumn

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

The British Columbia Ministry of Forests hereby disclaims all copyright
interest in the program `SortableTable' written by White Magic Software, Ltd.

*/

// Defines whether the browser is Internet Explorer; dictates the
// sort icon appearance.
//
var IS_IE = /*@cc_on!@*/false;

// Determines whether the table text can be selected. If set to true, then
// users can select and copy the table's data. If set to false, then
// clicking a row will highlight the entire row like a spreadsheet. There
// is support for SHIFT and CONTROL clicking.
//
var SPREADSHEET_BEHAVIOUR = false;

// Name of the class for selected tr elements.
//
var CSS_CLASS_SELECTED = 'selected';

// Name of the class for striped tr elements.
//
var CSS_CLASS_ZEBRA = 'zebra';

/**
 * Remove whitespace from the beginning and end of a string.
 */
String.prototype.trim = function() {
  return this.replace( /^\s+|\s+$/, '' );
}

/**
 * Add an element inside an array at a specific index.
 *
 * @param index - Position to insert element
 * @param value - Element to insert 
 */
Array.prototype.insert = function array_insert( index, value ) {
  this.splice( index, 0, value );

  if( this.currentIndex >= index ) {
    this.currentIndex++;
  }
}

/**
 * Returns the index number into an array for a given object. This will
 * only be implemented it the method not already exist (IE does not
 * define it). The array is zero-based.
 *
 * @param obj - The object in the array to find.
 * @return The index of the object in the array, or -1 if not found.
 */
if( !Array.indexOf ) {
  Array.prototype.indexOf = function( obj ) {
    for( var i = 0; i < this.length; i++ ) {
      if( this[ i ] == obj ) {
        return i;
      }
    }

    return -1;
  }
}

/**
 * Provides multicolumn sort functionality for a table. This class will
 * allow any number of columns to be sorted in ascending and descending
 * order. It detects dates, numbers, and alphabetic types to sort them
 * appropriately.
 *
 * This class is also responsible for disabling mouse-based selection of
 * text. Instead, it allows selecting of entire rows using the typical
 * mouse and keyboard shortcuts (i.e., control- and shift-clicks).
 *
 * The table's HTML must conform to the following general layout:
 *
 * <table>
 *   <thead>
 *     <tr><th></th></tr>
 *   </thead>
 *   <tbody>
 *     <tr><td></td></tr>
 *   </tbody>
 *   <tfoot>
 *     <tr><td></td></tr>
 *   </tfoot>
 * </table>
 *
 * Multiple <tr> and <td> elements are allowed, however only a single
 * <tbody> can be sorted. Additionally, only the first row in the <thead>
 * section is used to define which columns may be sorted.
 *
 * @param id - The id attribute for the table to be sorted.
 */
function SortableTable( id ) {
  var SORT_ASC  = 'ascending';
  var SORT_DESC = 'descending';
  var SORT_NONE = 'unsorted';

  // Since callback functions change the context of "this" to a DOM element,
  // use "me" to be a reference to the SortableTable instance. This variable
  // must not be changed.
  //
  var me = this;

  // Set to the most recent row that was (shift-)clicked.
  //
  var rowSelected = undefined;

  // A dynamic list of the columns by which to sort. This will have a list
  // of numbers that indicates, in order, which columns should be sorted.
  // For example, [2, 0, 1] would indicate that the third column (2) is the
  // primary sort key because it is in the 0th position of the array. The
  // secondary sort key is the first column (0); the third sort key is the
  // second column (1).
  //
  var sortColumns = undefined;

  // Array of functions used for sorting table column data.
  //
  var sortFunctions = undefined;

  // Class for each row to give the table zebra stripes.
  //
  var zebra = undefined;

  /**
   * Called to assign the mouse click handler for the table's header row.
   * Also renders the text in the table unselectable because selection will
   * be row-based, rather than cell-based.
   */
  SortableTable.prototype.init = function( id ) {
    //me.setZebra( CSS_CLASS_ZEBRA );
    me.setTable( document.getElementById( id ) );

    // Safari does not support "thead" elements.
    //
    if( me.table.tHead == null ) {
      me.table.tHead = me.table.getElementsByTagName( 'thead' )[0];
    }

    me.addSortIcon( me.table.tHead.rows[0].cells );

    // Ensure columns are sorted when a header is clicked.
    //
    me.addClickHandler( me.table.tHead.rows[0].cells, me.columnSelect );

    var tBodies = me.table.tBodies;

    if( SPREADSHEET_BEHAVIOUR ) {
      // Ensure rowSelect is called when a row is clicked.
      //
      // This loop assigns a click handler to all the rows so that when a row
      // is clicked, the sortable table can implement row selection handling.
      //
      for( var ti = tBodies.length - 1; ti >= 0; ti-- ) {
        me.addClickHandler( tBodies[ ti ].rows, me.rowSelect );
      }

      // Row-based selections are handled programatically; disable the ability
      // for the browser to highlight text within the table.
      //
      // This is not meant to prevent the user from copying the data (as they
      // can view the page source). This is meant to allow a user to highlight
      // rows as though they were editing a spreadsheet.
      //
      // Comment out this line to allow users to highlight table data.
      //
      me.disableSelect();
    }

    // Add zebra striping to the data. The appearance is controlled via CSS.
    //
    me.zebraStripeAll();

    // Associate a function to call with every column to sort. The function
    // will be the appropriate sort function for the data type. For example,
    // a column full of numbers will be associated with sortNumeric.
    //
    me.initSortFunctions();
  }

  /**
   * Sets the HTML-based table for sorting and highlighting operations.
   */
  SortableTable.prototype.setTable = function( table ) {
    me.table = table;
  }

  /**
   * Returns the HTML-based table for sorting and highlighting operations.
   */
  SortableTable.prototype.getTable = function() {
    return me.table;
  }

  /**
   * Returns the list of tbody elements within the table element.
   */
  SortableTable.prototype.getTableBodies = function() {
    return me.getTable().tBodies[0];
  }

  /**
   * Sets the row that was most recently clicked (for selection purposes).
   *
   * @param row - THe most recently clicked row.
   */
  SortableTable.prototype.setRowSelected = function( row ) {
    me.rowSelected = row;
  }

  /**
   * Returns the row that was most recently clicked (for selection purposes).
   */
  SortableTable.prototype.getRowSelected = function() {
    return me.rowSelected;
  }

  /**
   * Returns the list of columns that have been requested to sort.
   */
  SortableTable.prototype.getSortColumns = function() {
    if( !me.sortColumns ) {
      me.sortColumns = new Array();
    }

    return me.sortColumns;
  }

  /**
   * Browser-independent means to obtain the textual content for an element.
   * Typically, this is used to obtain the text value for a cell. White
   * space is trimmed from the ends of the string.
   *
   * @param element - HTML element whose textual content is sought.
   */
  SortableTable.prototype.getText = function( element ) {
    var result = '';

    if( element ) {
      if( typeof( element.textContent ) != 'undefined' )
        result = element.textContent;
      else if( typeof( element.innerText ) != 'undefined' )
        result = element.innerText;
      else if( typeof( element.innerHTML ) == 'string' )
        result = element.innerHTML.replace( /<[^<>]+>/g, '' );
    }

    return result.trim();
  }

  /**
   * Browser-independent means to add a callback function when an element
   * in the table is clicked. In this case, it is used to defined the
   * handlers for every data row and the first header row.
   *
   * @param element - The HTML table element to monitor for mouse events.
   * @param handler - The Javascript function to call when a click occurs.
   */
  SortableTable.prototype.addClickHandler = function( element, handler ) {
    for( var i = element.length - 1; i >= 0; i-- ) {
      addEvent( element[ i ], "click", handler );
    }
  }

  /**
   * Called when the end user clicks on a column's header row. This changes
   * the sort order for the column and then performs a full sort of the table
   * data.
   *
   * @param mouseEvent - Ignored.
   */
  SortableTable.prototype.columnSelect = function( mouseEvent ) {
    var sort_order = me.updateSortIcon( this.childNodes[1] );

    // The cell index of the header item that was selected becomes a
    // sorted column.
    // 
    var index = this.cellIndex;

    // Remove the column index from the list of columns to sort.
    //
    if( sort_order === SORT_NONE ) {
      me.removeSortIndex( index );
    }
    else {
      // Insert the column index into the list of columns by which to sort.
      //
      me.insertSortIndex( index );
    }

    var numColumns = me.getSortColumns().length;

    // If more than one column is selected, sort the subordinate columns
    // according to the first selected column.
    //
    if( numColumns > 1 ) {
      // The remaining columns to sort are "special". Only those rows in the
      // column, which was just sorted, that are equal will impart a subsort
      // of the subsequent columns. See the method description for algorithmic
      // details. Since the 0th selected column has been sorted, the
      // subordinate sort must begin sorting at the 1st selected column.
      //
      me.sortSubordinateColumns( numColumns - 2 );
    }
    else {
      // Sort the current and only selected column.
      //
      me.sort();
    }

    me.zebraStripeAll();
  }

  /**
   * Associates each column with a sort data type.
   */
  SortableTable.prototype.initSortFunctions = function() {
    var rows = me.getTableBodies().rows;
    var colCount = rows[0].cells.length;

    me.sortFunctions = new Array();

    // Loop over each column
    //
    for( var ci = 0; ci < colCount; ci++ ) {
      var ri = rows.length - 1;

      f = me.determineSortFunction( me.getText( rows[ ri ].cells[ ci ] ) );

      // For each column, loop over each row in that column while the sort
      // type is numeric. For a numeric sort to work properly, all data in
      // the column must be numeric. This loop will short-circuit non-numeric
      // data is found.
      //
      while( (f == me.sortNumeric) && (ri > 0) ) {
        ri--;
        f = me.determineSortFunction( me.getText( rows[ ri ].cells[ ci ] ) );
      }

      me.setSortFunction( ci, f );
    }
  }

  /**
   * Removes the given index from the sort columns list.
   *
   * This may be called after a user clicks on a heading to change its sort
   * order.
   *
   * @param index - The index of the table column heading that was clicked.
   */
  SortableTable.prototype.removeSortIndex = function( index ) {
    var sortColumns = me.getSortColumns();
    var sortIndex = sortColumns.indexOf( index );

    if( sortIndex >= 0 ) {
      sortColumns.splice( sortIndex, 1 );
    }
  }

  /**
   * Inserts the given index to the head of the sort columns list. If the
   * index value is already present, it will be removed from its current
   * location and placed at the head of the list.
   *
   * This is called when a user clicks on a heading to change its sort order.
   *
   * @param index - The index of the table column heading that was clicked.
   */
  SortableTable.prototype.insertSortIndex = function( index ) {
    var sortColumns = me.getSortColumns();

    // If the sortable column index already exists, remove it so that it
    // can be placed in the list, again, this time at the head, and avoid
    // duplication.
    //
    if( sortColumns.indexOf( index ) >= 0 ) {
      me.removeSortIndex( index );
    }

    sortColumns.insert( 0, index );
  }

  /**
   * Adds a SPAN element to every table header cell.
   *
   * @param cells - A list of table header cells.
   */
  SortableTable.prototype.addSortIcon = function( cells ) {
    for( var i = cells.length - 1; i >= 0; i-- ) {
      span = document.createElement( 'span' );
      span.innerHTML = getSortIconUnsorted();
      span.id = SORT_NONE;
      cells[ i ].appendChild( span );
    }
  }

  /**
   * Changes the presentation layer's sort icon depending on how the column
   * is being sorted. This is a three-state toggle: unsorted, ascending, and
   * descending. The state machine sorts first ascending, then descending,
   * then unsorted.
   *
   * @param span - The span element with an id attribute denoting sort order.
   * @return Sort order for the header that was clicked (e.g., ascending).
   */
  SortableTable.prototype.updateSortIcon = function( span ) {
    if( span.id === SORT_NONE ) {
      span.id = SORT_ASC;
      span.innerHTML = getSortIconDarr();
    }
    else if( span.id === SORT_ASC ) {
      span.id = SORT_DESC;
      span.innerHTML = getSortIconUarr();
    }
    else if( span.id === SORT_DESC ) {
      span.id = SORT_NONE;
      span.innerHTML = getSortIconUnsorted();
    }

    return span.id;
  }

  /**
   * Sorts the data in the table, taking into consideration multiple column
   * sort order.
   */
  SortableTable.prototype.sort = function() {
    var columns = me.getSortColumns();
    var column = columns[0];

    var rows = me.getTableBodies().rows;
    var rowData = [];
    var len = rows.length;

    // Build an array to sort. The array succumbs to a Schwartzian transform,
    // which sorts the data based on sort keys, thus eliminating multiple
    // calls to me.getText( ... ). In other words, only the column that is
    // to be sorted gets sorted; the rest of the columns remain associated
    // with the sorted column, as key-value pairs.
    //
    for( var i = 0; i < len; i++ ) {
      rowData[ rowData.length ] =
        [me.getText( rows[ i ].cells[ column ] ), rows [ i ]];
    }

    me.sortRowData( column, rows, rowData );

    var tBodies = me.getTableBodies();
    len = rowData.length;

    for( var i = 0; i < len; i++ ) {
      tBodies.appendChild( rowData[ i ][ 1 ] );
    }

    delete rowData;
  }

  SortableTable.prototype.sortRowData = function( column, rows, rowData ) {
    if( column != undefined ) {
      rowData.sort( me.getSortFunction( column ) );

      // After sorting the list, if the sort order is descending, then
      // reverse the result of the sort.
      //
      if( me.getSortOrder( column ) === SORT_DESC ) {
        rowData.reverse();
      }
    }
  }

  /**
   * This method performs a relative sort, using data from a controlling
   * (superior) column whose row values are equal to determine what data
   * in the given column is to be sorted.
   *
   * @param columnIndex - The index into the columns array that indicates
   * which column should be subordinately sorted.
   */
  SortableTable.prototype.sortSubordinateColumns = function( columnIndex ) {
    var columns = me.getSortColumns();
    var column = columns[ columnIndex ];

    var rows = me.getTableBodies().rows;

    var match = '';

    // To be equal, the matching text must be composed of all the superior
    // columns, not just the immediate superior. Otherwise, the sorting
    // will be relative only to the previous column, instead of all the
    // columns that have been sorted (relatively) thus far.
    //
    for( var si = 1; si < columns.length; si++ ) {
      match += me.getText( rows[0].cells[ columns[ si ] ] );
    }

    var matchCount = 1;

    // For all the rows in the superior column, create Schwartzian
    // transformed arrays to sort. In other words, build the array
    // according to the duplicate entries in the column that was
    // sorted before this one.
    //
    for( var i = 1; i < rows.length; i++ ) {
      var text = '';

      for( var si = 1; si < columns.length; si++ ) {
        text += me.getText( rows[i].cells[ columns[ si ] ] );
      }

      // If the current row matches the text of the previous row, then
      // increase the number of matches that were found. The number of
      // matches along with the current index counter (i) determines which
      // indices of the table data to sort.
      //
      if( text == match ) {
        matchCount++;
      }
      else {
        // The most recent row did not match the former row's text. Next,
        // determine whether or not a sort is required. Subsorting makes
        // sense only when there are at least two items to compare.
        //
        if( matchCount > 1 ) {
          me.subsort( column, (i - matchCount), (i - 1) );
          matchCount = 1;
        }

        match = text;
      }
    }

    if( matchCount > 1 ) {
      i = rows.length;
      me.subsort( column, (i - matchCount), (i - 1) );
    }

    // If there are more subordinate columns, sort them.
    //
    if( columnIndex - 1 >= 0 ) {
      me.sortSubordinateColumns( columnIndex - 1 );
    }
  }

  /**
   * Responsible for sorting a specific range of rows for a given column.
   *
   * @param column - The column whose data subset must be sorted.
   * @param si - The starting index of the data subset.
   * @param ei - The ending index of the data subset.
   */
  SortableTable.prototype.subsort = function( column, si, ei ) {
    var rowData = [];
    var rows = me.getTableBodies().rows;

    for( var i = si; i <= ei; i++ ) {
      rowData[ rowData.length ] =
        [me.getText( rows[ i ].cells[ column ] ), rows [ i ]];
    }

    me.sortRowData( column, rows, rowData );

    var tBodies = me.getTableBodies();

    for( var i = 0; i < rowData.length; i++ ) {
      // Swap the unsorted table row data with the sorted row data.
      //
      me.swapElements( rows[ i + si ], rowData[ i ][1] );
    }

    delete rowData;
  }

  /**
   * Switches around the placement of two elements within the document.
   * Typically this is used for swapping rows in a table.
   *
   * @param a - The element to swap with "b".
   * @param b - The element to swap with "a".
   */
  SortableTable.prototype.swapElements = function( a, b ) {
    var bP = b.parentNode;
    var bS = b.nextSibling;

    a.parentNode.insertBefore( b, a.nextSibling );
    bP.insertBefore( a, bS );
  }

  /**
   * Sort operation that compares numbers.
   *
   * @param a - The first number to compare.
   * @param b - The second number to compare.
   * @return 0 - The numbers (a, b) are equal.
   */
  SortableTable.prototype.sortNumeric = function( a, b ) {
    return me.atof( a[0] ) - me.atof( b[0] );
  }

  /**
   * Sort operation that compares dates. Dates must be in DD-MM-YYYY format.
   *
   * @param a - The first date to compare.
   * @param b - The second date to compare.
   * @return 0 - The dates (a, b) are equal.
   */
  SortableTable.prototype.sortDate = function( a, b ) {
    // Create a number by concatentating the constituent parts. The
    // result will be in the following format: YYYYMMDD. Two numbers
    // compared in this fashion will sort both numerically and alphabetically.
    //
    return me.toSortableDate( a[0] ) - me.toSortableDate( b[0] );
  }

  /**
   * Sort operation that compares alphabetic characters, ignoring case.
   *
   * @param a - The first string to compare.
   * @param b - The second string to compare.
   * @return 0 - The strings (a, b) are equal.
   */
  SortableTable.prototype.sortCaseInsensitive = function( a, b ) {
    var al = a[0].toLowerCase();
    var bl = b[0].toLowerCase();

    if( al == bl ) {
      return 0;
    }

    return (al > bl) ? 1 : -1;
  }

  /**
   * Sets a reference to the method used to sort the data for the
   * given column.
   *
   * @param column - Index of the column to associate with a sort function.
   * @param f - The sort function to associate with the given column.
   */
  SortableTable.prototype.setSortFunction = function( column, f ) {
    me.sortFunctions[ column ] = f;
  }

  /**
   * Returns a reference to the method used to sort the data for the
   * given column.
   *
   * @param column - Index into the sortFunctions array.
   */
  SortableTable.prototype.getSortFunction = function( column ) {
    return me.sortFunctions[ column ];
  }

  /**
   * Decides which sort method is appropriate for the given string.
   *
   * @param text - The string whose intrinsic data type is unknown.
   */
  SortableTable.prototype.determineSortFunction = function( text ) {
    var result = me.sortCaseInsensitive;

    if( text.match( /^\d\d[\/-]\d\d[\/-]\d\d\d\d$/ ) ||
        text.match( /^\d\d[\/-]\d\d[\/-]\d\d$/ ) ) {
      result = me.sortDate;
    }

    if( text.match( /^\d?\.?\d+$/ ) ||
        text.match( /^[+-]?\d*\.?\d+([eE]-?\d+)?$/ ) ) {
      result = this.sortNumeric;
    }

    return result;
  }

  /**
   * Returns the sort order for a column as defined by a header cell.
   *
   * @param column - The column whose sort order is sought.
   */
  SortableTable.prototype.getSortOrder = function( column ) {
    var children = me.getTable().tHead.rows[0].cells[ column ];
    var result = SORT_NONE;
    
    // If there are children, it means there is a SPAN element present.
    // The SPAN element defines the sort order via its id attribute.
    //
    if( children ) {
      result = children.childNodes.item( 1 ).id;
    }

    return result;
  }

  /**
   * Converts a string to a floating point number.
   *
   * @param n - The number to convert.
   */
  SortableTable.prototype.atof = function( n ) {
    return isNaN( parseFloat( n ) ) ? -Number.MAX_VALUE : n;
  }

  /**
   * Converts a given string (in DD-MM-YYYY format) into a form suitable for
   * sorting.
   *
   * @param text - The date to convert.
   */
  SortableTable.prototype.toSortableDate = function( text ) {
    return text.substr( 6, 4 ) + text.substr( 3, 2 ) + text.substr( 0, 2 );
  }

  /**
   * This method controls how selecting rows behaves. It does not emulate
   * the selection UI standard with regards to click, control-click,
   * shift-click and shift-control-click. However, it comes fairly close for
   * its simplistic algorithm.
   *
   * Holding shift while clicking should always deselect everything except
   * the range that is desired. At the moment, a shift-click without control
   * pressed will not deselect any previously selected rows (that were
   * selected using shift-control-click).
   */
  SortableTable.prototype.rowSelect = function( mouseEvent ) {
    var currentRow = me.getRowSelected();

    // Record which row was selected so that if the shift key is held, a
    // range of rows may be highlighed.
    //
    me.setRowSelected( this );

    if( currentRow ) {
      if( isShiftKeyHeld( mouseEvent ) ||
          (isShiftKeyHeld( mouseEvent ) && isControlKeyHeld( mouseEvent )) ) {

        // Assign the start and end indices for the selection.
        //
        var sIndex = Math.min( currentRow.rowIndex, this.rowIndex );
        var eIndex = Math.max( currentRow.rowIndex, this.rowIndex );

        // Subtract 1 because the rowIndex is 1-based, but the array is
        // 0-based; consequently, we don't need to loop to the value of
        // eIndex, but stop selecting rows just before it.
        //
        var rows = me.getTableBodies().rows;

        for( var ri = sIndex - 1; ri < eIndex; ri++ ) {
          me.setSelected( rows[ ri ] );
        }
      }
      else if( isControlKeyHeld( mouseEvent ) ) {
        // Toggle a single row.
        //
        me.toggleSelected( this );
      }
      else {
        // Neither control nor shift were held ...
        //
        me.deselectAllRows();
        me.setSelected( this );
      }
    }
    else {
      me.toggleSelected( this );
    }

    return true;
  }

  SortableTable.prototype.zebraStripeAll = function() {
    var rows = me.getTableBodies().rows;

    for( var ri = 0; ri < rows.length; ri++ ) {
      me.zebraStripe( rows[ ri ] );
    }
  }

  /**
   * Sets the zebra striping for a row. The striping will only appear if the
   * given row is even. Striping occurs by setting the class for the row.
   */
  SortableTable.prototype.zebraStripe = function( row ) {
    row.className = (row.rowIndex & 1 == 1) ? '' : CSS_CLASS_ZEBRA;
  }

  /**
   * Forces the given row to be highlighted.
   *
   * @param row - The row to highlight.
   */
  SortableTable.prototype.setSelected = function( row ) {
    row.className = CSS_CLASS_SELECTED;
  }

  /**
   * Changes the highlighted state of the row. If the row is currently
   * highlighted, this method will deselect the row. Otherwise, the row will
   * be highlighted.
   *
   * @param row - The row to toggle.
   */
  SortableTable.prototype.toggleSelected = function( row ) {
    if( row.className == CSS_CLASS_SELECTED ) {
      // Disable selection by returning the zebra stripe.
      //
      me.zebraStripe( row );
    }
    else {
      row.className = CSS_CLASS_SELECTED;
    }
  }

  /**
   * Forces all rows in all tbody sections to be deselected.
   */
  SortableTable.prototype.deselectAllRows = function() {
    var tBodies = me.table.tBodies;

    for( var ti = tBodies.length - 1; ti >= 0; ti-- ) {
      var rows = me.table.tBodies[ ti ].rows;

      for( var ri = rows.length - 1; ri >= 0; ri-- ) {
        me.zebraStripe( rows[ ri ] );
      }
    }
  }

  /**
   * Disables the ability to select text within a table. Does not prevent
   * keyboard- or menu-based selection.
   */
  SortableTable.prototype.disableSelect = function() {
    table = me.getTable();
    table.onselectstart = function() { return false; }
    table.onmousedown   = function() { return false; }
    table.style.cursor  = "default";
  }

  me.init( id );
}

/**
 * Returns the appropriate object for detecting key presses, in a browser
 * independent fashion.
 *
 * @return The event object for detecting key presses.
 */
function getKeyPress( e ) {
  return window.event ? event : e;
}

/**
 * Indicates whether or not the shift key is pressed during an event (e).
 *
 * @return true - The shift key is held.
 */
function isShiftKeyHeld( e ) {
  return getKeyPress( e ).shiftKey;
}

/**
 * Indicates whether or not the control key is pressed during an event (e).
 *
 * @return true - The control key is held.
 */
function isControlKeyHeld( e ) {
  return getKeyPress( e ).ctrlKey;
}

/**
 * Indicates a column is not sorted.
 */
function getSortIconUnsorted() {
  return '&nbsp;&nbsp;';
}

/**
 * Indicates a column is sorted in ascending order.
 */
function getSortIconUarr() {
  return '&nbsp;' + (IS_IE ? '<font face="webdings">5</font>' : '&#x25B4;');
}

/**
 * Indicates a column is sorted in descending order.
 */
function getSortIconDarr() {
  return '&nbsp;' + (IS_IE ? '<font face="webdings">6</font>' : '&#x25BE;');
}

