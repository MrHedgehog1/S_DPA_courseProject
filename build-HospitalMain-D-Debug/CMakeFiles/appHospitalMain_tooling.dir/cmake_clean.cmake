file(REMOVE_RECURSE
  "HospitalMain/main.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appHospitalMain_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
