import Mathlib

/-- Embeds complex numbers as 2×2 real matrices of the form [[a, -b],[b, a]]. -/
def phi (z : ℂ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | 0, 0 => z.re
  | 0, 1 => -z.im
  | 1, 0 => z.im
  | 1, 1 => z.re

/-- The subset G of 2×2 real matrices of the above form. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) := Set.range phi

/-- phi is additive (respects addition). -/
theorem phi_add (z w : ℂ) : phi (z + w) = phi z + phi w := by sorry

/-- phi is injective. -/
theorem phi_injective : Function.Injective phi := by sorry

/-- phi is surjective onto its range. -/
theorem phi_surjective : Function.Surjective phi := by sorry

/-- Additive equivalence (isomorphism of additive groups) between (ℂ, +) and G. -/
def complex_matrix_add_equiv : ℂ ≃+ Set.range phi := AddEquiv.ofBijective phi phi_injective phi_surjective
