import Mathlib

variable (a b : ℝ)

/-- The 2×2 complex matrix representing the complex number a + I b. -/
def M : Matrix (Fin 2) (Fin 2) ℂ := fun i j =>
  if i = (0 : Fin 2) then if j = (0 : Fin 2) then (a : ℂ) else - (b : ℂ) else if j = (0 : Fin 2) then (b : ℂ) else (a : ℂ)

/-- Eigenvectors corresponding to a ± I b. -/
def v_plus : Fin 2 → ℂ := fun i => if i = (0 : Fin 2) then 1 else -Complex.I

def v_minus : Fin 2 → ℂ := fun i => if i = (0 : Fin 2) then 1 else Complex.I

lemma M_mul_v_plus : ∀ i : Fin 2, ∑ j : Fin 2, M a b i j * v_plus a b j = ((a : ℂ) + Complex.I * (b : ℂ)) * v_plus a b i := by sorry

lemma M_mul_v_minus : ∀ i : Fin 2, ∑ j : Fin 2, M a b i j * v_minus a b j = ((a : ℂ) - Complex.I * (b : ℂ)) * v_minus a b i := by sorry
