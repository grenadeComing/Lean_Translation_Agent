import Mathlib

open Complex

def M (ξ ζ : Complex) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i.val, j.val with
    | 0, 0 => (ξ.re + ζ.re)
    | 0, 1 => (-ξ.im + ζ.im)
    | 1, 0 => (ξ.im + ζ.im)
    | 1, 1 => (ξ.re - ζ.re)
    | _, _ => 0

theorem jirilebl_ca_ca_1146 (ξ ζ : Complex) : Matrix.det (M ξ ζ) = Complex.normSq ξ - Complex.normSq ζ := by
  sorry
