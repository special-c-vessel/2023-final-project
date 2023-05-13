# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.


if(WIN32 OR CYGWIN)
  set(LLVM_LINK_COMPONENTS Core Support)
endif()

add_llvm_library( LLVMTest2 MODULE BUILDTREE_ONLY
  Test2.cpp

  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )
