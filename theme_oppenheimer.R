require('ggplot2')

oppenheimer_pal <- c(
  "#ECEFF4",
  "#D8DEE9",
  "#A3AAB6",
  "#6F7684",
  "#3B4252",
  "#363D4C",
  "#323846",
  "#2E3440"
)

text_color_oppenheimer <- "#2e3440"
panel_color_oppenheimer   <- "#eceff4"
border_color_oppenheimer  <- "#2e3440"



oppenheimer_palette <- function(num_cols, var_type = c("discrete", "continuous")) {
  type <- match.arg(var_type)
  
  if (missing(num_cols)) {
    num_cols <- length(oppenheimer_pal)
  }
  
  oppenheimer <- switch(
    type,
    # Recycles palette colors to desired discrete length
    "discrete"   = rep(oppenheimer_pal, length.out = num_cols),
    # Interpolates colors
    "continuous" = grDevices::colorRampPalette(oppenheimer_pal)(num_cols)
  )
  
  structure(
    oppenheimer,
    name  = "oppenheimer",
    class = "palette"
  )
}


theme_oppenheimer <- function() { 
    ggplot2::theme(
      axis.text  = element_text(color = text_color_oppenheimer, size=12),
      axis.title = element_text(color = text_color_oppenheimer, size=12),
      legend.key        = element_rect(fill  = "transparent", color = NA),
      legend.text       = element_text(color = text_color_oppenheimer),
      legend.title      = element_text(color = text_color_oppenheimer),
      panel.background = element_rect(fill = panel_color_oppenheimer),
      panel.border = element_rect(fill = NA, color = '#2e3440', linewidth=1.5),
      panel.grid        = element_line(color = "#3B4252"),
      title = element_text(color = text_color_oppenheimer)
    )
}

scale_fill_oppenheimer_gradient <- function(){
  ggplot2::scale_fill_gradient(low = "#d8dee9", high = "#3b4252")
  }
scale_color_oppenheimer_gradient <- function(){
  ggplot2::scale_color_gradient(low = "#d8dee9", high = "#3b4252")
  }


