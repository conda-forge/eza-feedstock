@echo on

:: check licenses
cargo-bundle-licenses --format yaml --output THIRDPARTY.yml

:: build
cargo install --locked  --root "%LIBRARY_PREFIX%" --path . --no-track || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1
