import Mathlib

open Set

axiom IsRiemannIntegrableOn (α : Type _) (f : α → ℝ) (s : Set α) : Prop
axiom riemannIntegral (α : Type _) (f : α → ℝ) (s : Set α) : ℝ

theorem rectangle_zero_side_rintegral {n : ℕ} {a b : Fin n → ℝ} (i : Fin n) (h : a i = b i)
  (f : { x : Fin n → ℝ // x ∈ Set.Icc a b } → ℝ) :
  IsRiemannIntegrableOn _ f (Set.univ : Set { x : Fin n → ℝ // x ∈ Set.Icc a b }) ∧
  riemannIntegral _ f (Set.univ : Set { x : Fin n → ℝ // x ∈ Set.Icc a b }) = 0 := by sorry
