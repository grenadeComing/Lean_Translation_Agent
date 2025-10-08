import Mathlib
open Complex
open Matrix

def M (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℂ := fun i j =>
  if i = (0 : Fin 2) then if j = (0 : Fin 2) then (a : ℂ) else (-(b : ℂ))
  else if j = (0 : Fin 2) then (b : ℂ) else (a : ℂ)

def v1 : Fin 2 → ℂ := fun i => if i = (0 : Fin 2) then (1 : ℂ) else -I

def v2 : Fin 2 → ℂ := fun i => if i = (0 : Fin 2) then (1 : ℂ) else I

theorem jirilebl_ca_ca_997 (a b : ℝ) :
  Matrix.mulVec (M a b) v1 = (a + b * I) • v1 ∧
  Matrix.mulVec (M a b) v2 = (a - b * I) • v2 := by sorry
