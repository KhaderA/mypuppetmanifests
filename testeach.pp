  $myarr = [
  'apple',
  'orange',
  'grapes',
  'mango',
  ]
# the variable myarr is an array, so the values assigned to i below are one value at time. The notify resource name should be $i because if we try hardcoding it, the manifest will fail due to duplication of name during iteration.
  $myarr.each | $i | {
    notify { $i:
      message => $i
    }
  }
