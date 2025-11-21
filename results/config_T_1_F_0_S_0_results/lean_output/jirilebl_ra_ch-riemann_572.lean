import Mathlib

/-- If f : ℝ → ℝ is bounded on [a,b] and there is a sequence of partitions P k of [a,b]
    with upper_sum (P k) - lower_sum (P k) → 0, then f is Riemann integrable on [a,b]
    and the Riemann integral equals the common limit of the upper and lower sums. -/
theorem riemann_integrable_of_partition_limits {f : ℝ → ℝ} {a b : ℝ} (hab : a ≤ b)
  (hf_bdd : ∃ M, ∀ x ∈ Set.Icc a b, |f x| ≤ M)
  {Partition : ℝ → ℝ → Type _} {upper_sum lower_sum : ∀ {a' b' : ℝ}, Partition a' b' → ℝ}
  (P : ℕ → Partition a b)
  (h_diff_tendsto_zero : Tendsto (fun k => upper_sum (P k) - lower_sum (P k)) atTop (𝓝 0)) :
  RiemannIntegrable f a b ∧
  (∃ I : ℝ, (∫ x in a..b, f x) = I ∧
    Tendsto (fun k => upper_sum (P k)) atTop (𝓝 I) ∧
    Tendsto (fun k => lower_sum (P k)) atTop (𝓝 I)) := by sorry