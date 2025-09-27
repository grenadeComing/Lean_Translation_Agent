import Mathlib

/-- If f : [a,b] → ℝ is bounded and there is a sequence of partitions P k with
    U(P_k,f) - L(P_k,f) → 0, then f is Riemann integrable on [a,b] and the common
    limit of the upper and lower sums equals the integral. -/
theorem jirilebl_ra_ch_riemann_572 {a b : ℝ} {f : ℝ → ℝ}
  (Partition : Type)
  (upper_sum : Partition → (ℝ → ℝ) → ℝ)
  (lower_sum : Partition → (ℝ → ℝ) → ℝ)
  (RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop)
  (integral : (ℝ → ℝ) → ℝ → ℝ → ℝ)
  (h_bounded : ∃ M, ∀ x, a ≤ x → x ≤ b → |f x| ≤ M)
  (P : ℕ → Partition)
  (h_diff_to_zero : ∀ ε > 0, ∃ N : ℕ, ∀ k, k ≥ N → |upper_sum (P k) f - lower_sum (P k) f| < ε) :
  RiemannIntegrableOn f a b ∧
  (∀ ε > 0, ∃ N : ℕ, ∀ k, k ≥ N → |upper_sum (P k) f - integral f a b| < ε) ∧
  (∀ ε > 0, ∃ N : ℕ, ∀ k, k ≥ N → |lower_sum (P k) f - integral f a b| < ε) := by sorry
