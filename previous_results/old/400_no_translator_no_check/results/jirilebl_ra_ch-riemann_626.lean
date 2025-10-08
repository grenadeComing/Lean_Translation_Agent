import Mathlib

/-- Translation of the classical statement:
Suppose f : [a,b] → ℝ is Riemann integrable. Let ε > 0 be given.
Then there exists a partition P = {x_0,..,x_n} such that for every choice of tags
c_k ∈ [x_{k-1},x_k] one has | ∫_a^b f - Σ f(c_k) Δx_k | < ε.

We keep abstract predicates RiemannIntegrableOn and RiemannIntegral and end
with `by sorry` as requested. -/

theorem jirilebl_ra_ch_riemann_626
  (RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop)
  (RiemannIntegral : (ℝ → ℝ) → ℝ → ℝ → ℝ)
  (f : ℝ → ℝ) {a b : ℝ}
  (h : RiemannIntegrableOn f a b) :
  ∀ ε : ℝ, 0 < ε →
    ∃ (n : ℕ) (x : ℕ → ℝ),
      x 0 = a ∧ x n = b ∧ (∀ k, k < n → x k ≤ x (k + 1)) ∧
      (∀ (cs : ℕ → ℝ), (∀ k, k < n → cs k ∈ Set.Icc (x k) (x (k + 1))) →
         abs (RiemannIntegral f a b - Finset.sum (Finset.range n) (fun k => f (cs k) * (x (k + 1) - x k))) < ε) := by
  sorry
