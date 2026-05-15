summary(mtcars)
ratarata<-mean(mtcars$mpg)
n<-length(mtcars)
status <- numeric(n)
for (i in 1:n){
  if (mtcars$mpg[i]>ratarata){
    status[i]<-'tinggi'
  }
  else
    status<-append(status,'rendah')
}

hist(mtcars$mpg)

# 1. Menampilkan data kolom mpg dari dataframe mtcars
mtcars$mpg
# 2. Menghitung rata-rata dari kolom mpg
mean_mpg = mean(mtcars$mpg)
# 3. Membuat kolom baru 'upper_mean' di dalam dataframe mtcars
mtcars$upper_mean = ifelse(mtcars$mpg >= mean_mpg, "upper", "lower")
# 4. Melakukan verifikasi hasil (opsional)
head(mtcars[, c("mpg", "upper_mean")])
