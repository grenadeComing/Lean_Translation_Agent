import Mathlib
open Filter
open scoped Uniformity Topology

/-- If $\left\{E_{n}\right\}$ is a sequence of closed nonempty and bounded sets in a complete metric space $X$, if $E_{n} \supset E_{n+1}$, and if $\lim _{n \rightarrow \infty} \operatorname{diam} E_{n}=0,$ then $\bigcap_{1}^{\infty} E_{n}$ consists of exactly one point. -/
theorem Inter_of_nonempty_closed_bounded_dec_seq {X : Type*} [MetricSpace X] [CompleteSpace X]
  {En : ℕ → Set X} (hEn : ∀ n, IsClosed (En n)) (hEn_nonempty : ∀ n, (En n).Nonempty)
  (hEn_bounded : ∀ n, Bornology.IsBounded (En n)) (hEn_anti : ∀ n, En n ⊇ En (n + 1))
  (hEn_diam : ∀ ε > 0, ∃ N, ∀ n ≥ N, Metric.diam (En n) ≤ ε) :
  ∃! x, x ∈ ⋂ n, En n := sorry