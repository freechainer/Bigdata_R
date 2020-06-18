weight <- c(60, 62, 64, 65, 68, 69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)                  # Æò±Õ
mean(weight.heavy)            # Æò±Õ

median(weight)                # Áß¾Ó°ª
median(weight.heavy)          # Áß¾Ó°ª

mean(weight, trim=0.2)        # Àý»çÆò±Õ(»óÇÏÀ§ 20% Á¦¿Ü)
mean(weight.heavy,trim=0.2)   # Àý»çÆò±Õ(»óÇÏÀ§ 20% Á¦¿Ü)