
# Should add way to update

# unzip all the fiels and rename them
n <- list()

for (i in list.files()) {
  n[[i]] <- unzip(i, list = T)
  unzip(i)
  file.rename(n[[i]]$Name, gsub('zip', 'txt', i))
}
