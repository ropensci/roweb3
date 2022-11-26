library(targets)
library("ggplot2")
library("targets")
list(tar_target(mtcars_df, mtcars), tar_target(simple_plot, ggplot(mtcars_df, 
    aes(cyl, mpg)) + geom_point()), tar_target(complex_plot, 
    {
        mtcars_df2 = mtcars_df
        mtcars_df3 = rbind(mtcars_df, mtcars_df2)
        mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
        ggplot(mtcars_df4, aes(cyl, mpg)) + geom_point()
    }), tar_target(complex_but_slim_plot, {
    mtcars_df2 = mtcars_df
    mtcars_df3 = rbind(mtcars_df, mtcars_df2)
    mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
    rm(mtcars_df, mtcars_df2, mtcars_df3)
    ggplot(mtcars_df4, aes(cyl, mpg)) + geom_point()
}))
