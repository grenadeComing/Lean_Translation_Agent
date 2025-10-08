import Mathlib

variable {f : ℝ → ℝ} {a b ε : ℝ}
variable (RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop)
variable (riemannIntegral : (ℝ → ℝ) → ℝ → ℝ → ℝ)

theorem exists_partition_riemann (h : RiemannIntegrableOn f a b) (hε : 0 < ε) :
  ∃ (n : ℕ) (x : Fin (n+1) → ℝ),
    x 0 = a ∧ x (Fin.last n) = b ∧
    ∀ (cs : Fin n → ℝ), (∀ i, cs i ∈ Set.Icc (x i) (x (Fin.succ i))) →
      |riemannIntegral f a b - ∑ i : Fin n, f (cs i) * (x (Fin.succ i) - x i)| < ε := by sorry
