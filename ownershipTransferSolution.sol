function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  try {
    _transferOwnership(newOwner);
  } catch (bytes memory reason) {
    // Handle exceptions appropriately, e.g., revert with custom error message
    if (reason.length == 0) {
      revert("Transfer failed");
    } else {
      assembly {
        revert(add(32, reason), mload(reason))
      }
    }
  }
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(owner, newOwner);
  owner = newOwner;
}