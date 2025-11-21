import Mathlib

noncomputable section

def theta (n : ℕ) : ℝ := 2 * Real.pi / (n : ℝ)

noncomputable def r (n : ℕ) : Fin 2 → Fin 2 → ℝ := fun i j =>
  if i = (0 : Fin 2) then if j = (0 : Fin 2) then Real.cos (theta n) else - Real.sin (theta n)
  else if j = (0 : Fin 2) then Real.sin (theta n) else Real.cos (theta n)

def h : Fin 2 → Fin 2 → ℝ := fun i j =>
  if i = (0 : Fin 2) then if j = (0 : Fin 2) then 1 else 0
  else if j = (0 : Fin 2) then 0 else -1

def mul (A B : Fin 2 → Fin 2 → ℝ) : Fin 2 → Fin 2 → ℝ := fun i k =>
  Finset.univ.sum fun j : Fin 2 => A i j * B j k

theorem rhr_eq_h (n : ℕ) (hn : 3 ≤ n) :
  mul (mul (r n) h) (r n) = h := by sorry

end noncomputable section