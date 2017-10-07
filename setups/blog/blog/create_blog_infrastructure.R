# Set working directory
setwd("~/blog")

# Install blogdown
install.packages("blogdown")

# Load blogdown
library(blogdown)

# Install hugo
install_hugo()

# Install theme for blog
install_theme("yihui/hugo-lithium-theme", TRUE)

# Create sample site
blogdown:::dir_create("content/post")
file.copy(blogdown:::pkg_file("resources", "2015-07-23-r-rmarkdown.Rmd"), "content/post")

# Create the index.Rmd file
writeLines(c("---", "site: blogdown:::blogdown_site", "---"), "index.Rmd")

# Build the website
build_site()
