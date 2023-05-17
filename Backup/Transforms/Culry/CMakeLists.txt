if(WIN32 OR CYGWIN)
  set(LLVM_LINK_COMPONENTS Core Support)
endif()

add_llvm_library( LLVMCulry MODULE BUILDTREE_ONLY
  Culry.cpp
  TestClass.h
  TestClass.cpp

  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )
