import Mathlib

open Matrix

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i.val, j.val with
  | 0, 0 => Real.cos θ
  | 0, 1 => -Real.sin θ
  | 1, 0 => Real.sin θ
  | 1, 1 => Real.cos θ
  | _, _ => 0

noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i.val, j.val with
  | 0, 0 => Real.cos (2 * θ)
  | 0, 1 => Real.sin (2 * θ)
  | 1, 0 => Real.sin (2 * θ)
  | 1, 1 => -Real.cos (2 * θ)
  | _, _ => 0

theorem O2_eq : {M : Matrix (Fin 2) (Fin 2) ℝ | Mᵀ * M = 1} =
  Set.range R ∪ Set.range H := by sorry
