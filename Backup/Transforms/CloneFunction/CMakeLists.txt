# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.


if(WIN32 OR CYGWIN)
  set(LLVM_LINK_COMPONENTS Core Support)
endif()

add_llvm_library( LLVMCloneFunction MODULE BUILDTREE_ONLY
  CloneFunction.cpp

  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )
