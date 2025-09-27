import Mathlib

constant Partition : Type

constant RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop
constant integral : (ℝ → ℝ) → ℝ → ℝ → ℝ
constant upper_sum : (ℝ → ℝ) → Partition → ℝ
constant lower_sum : (ℝ → ℝ) → Partition → ℝ

theorem riemann_integrable_of_partition_sums_tend_to_zero {f : ℝ → ℝ} {a b : ℝ}
  (hf_bdd : ∃ M : ℝ, ∀ x : ℝ, |f x| ≤ M)
  (P : ℕ → Partition)
  (h_diff : ∀ ε > 0, ∃ N : ℕ, ∀ k ≥ N, |upper_sum f (P k) - lower_sum f (P k)| < ε) :
  ∃ L0 : ℝ, RiemannIntegrableOn f a b ∧ integral f a b = L0 ∧
    (∀ ε > 0, ∃ N : ℕ, ∀ k ≥ N, |upper_sum f (P k) - L0| < ε) ∧
    (∀ ε > 0, ∃ N : ℕ, ∀ k ≥ N, |lower_sum f (P k) - L0| < ε) := by
  sorry
