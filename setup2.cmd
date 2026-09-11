@echo off

echo.> website\.gitkeep
echo.> rehumanizer\.gitkeep
echo.> rfp-evaluator\.gitkeep
echo.> experiments\.gitkeep
echo.> docs\.gitkeep

git add .
git commit -m "Add project workspace folders"
git push

echo.
echo Done - empty workspace folders should now appear on GitHub.
pause