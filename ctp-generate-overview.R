
resourcesPath <- "resources";

resources <- lapply(list.files(resourcesPath,
                               pattern="\\.Rmd",
                               full.names=TRUE),
                    function(filename) {
                      fileContent <- readLines(filename,
                                               encoding=getOption('encoding'));
                      return(rmarkdown:::parse_yaml_front_matter(fileContent));
                    });

resources
