library(readr)
metrics_summary_SRR16922352 <- read_csv("/data/PRJNA779749/cellranger/SRR16922352/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922352")
metrics_summary_SRR16922353 <- read_csv("/data/PRJNA779749/cellranger/SRR16922353/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922353")
metrics_summary_SRR16922354 <- read_csv("/data/PRJNA779749/cellranger/SRR16922354/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922354")
metrics_summary_SRR16922355 <- read_csv("/data/PRJNA779749/cellranger/SRR16922355/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922355")
metrics_summary_SRR16922356 <- read_csv("/data/PRJNA779749/cellranger/SRR16922356/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922356")
metrics_summary_SRR16922357 <- read_csv("/data/PRJNA779749/cellranger/SRR16922357/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922357")
metrics_summary_SRR16922358 <- read_csv("/data/PRJNA779749/cellranger/SRR16922358/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922358")
metrics_summary_SRR16922359 <- read_csv("/data/PRJNA779749/cellranger/SRR16922359/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922359")
metrics_summary_SRR16922360 <- read_csv("/data/PRJNA779749/cellranger/SRR16922360/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922360")
metrics_summary_SRR16922361 <- read_csv("/data/PRJNA779749/cellranger/SRR16922361/outs/metrics_summary.csv") %>% mutate(Run = "SRR16922361")
metrics_summary <-
  bind_rows(
    metrics_summary_SRR16922352,
    metrics_summary_SRR16922353,
    metrics_summary_SRR16922354,
    metrics_summary_SRR16922355,
    metrics_summary_SRR16922356,
    metrics_summary_SRR16922357,
    metrics_summary_SRR16922358,
    metrics_summary_SRR16922359,
    metrics_summary_SRR16922360,
    metrics_summary_SRR16922361)

metrics_summary |>
  select("Estimated Number of Cells", "Run")

write_tsv(metrics_summary, here("metrics_summary.tsv"))

