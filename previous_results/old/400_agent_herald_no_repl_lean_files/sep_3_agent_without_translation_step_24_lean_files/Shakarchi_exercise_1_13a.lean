import Mathlib

open Complex Set

theorem shakarchi_exercise_1_13a {Ω : Set ℂ} (hΩ : IsOpen Ω) {f : ℂ → ℂ}
  (hd : DifferentiableOn ℂ f Ω)
  (hRe_const : ∃ c : ℝ, ∀ z ∈ Ω, (Complex.re (f z)) = c) :
  ∀ z w, z ∈ Ω → w ∈ Ω → f z = f w :=
by sorry
