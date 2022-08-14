cd pages
mkdocs build
cd ..
rd /s/q css
rd /s/q fonts
rd /s/q img
rd /s/q js 
rd /s/q search 
del /Q 404.html
del /Q index.html
del /Q sitemap.xml
del /Q sitemap.xml.gz
cd pages
move .\site\* ..\