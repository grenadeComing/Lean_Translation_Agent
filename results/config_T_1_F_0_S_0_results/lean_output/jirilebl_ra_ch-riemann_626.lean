import Mathlib

/-- Suppose f : [a,b] → ℝ is Riemann integrable. Let ε > 0 be given. Then there exists a partition P = {x_0, ..., x_n}
such that for every choice of points c_k ∈ [x_{k-1}, x_k] we have
|∫_a^b f - ∑_{k=1}^n f(c_k) Δx_k| < ε. -/
theorem exists_partition_for_riemann_integral_approx {a b : ℝ} (f : ℝ → ℝ)
  (h : RiemannIntegrableOn f (Set.Icc a b)) {ε : ℝ} (ε_pos : 0 < ε) :
  ∃ (n : ℕ) (P : ℕ → ℝ),
    P 0 = a ∧ P n = b ∧ (∀ k, k < n → P k ≤ P (k + 1)) ∧
    (∀ (c : Fin n → ℝ), (∀ i : Fin n, c i ∈ Set.Icc (P i.val) (P (i.val + 1))) →
      abs (intervalIntegral.integral f a b - Finset.univ.sum (λ i : Fin n, f (c i) * (P (i.val + 1) - P (i.val)))) < ε) := by sorry