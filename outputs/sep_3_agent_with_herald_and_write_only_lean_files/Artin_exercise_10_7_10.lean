import Mathlib

variable {R : Type _} [CommRing R]

theorem Artin_exercise_10_7_10 (M : Ideal R) (hM : M ≠ ⊤) (h : ∀ x : R, x ∉ M → IsUnit x) :
  M.IsMaximal ∧ ∀ I : Ideal R, I.IsMaximal → I = M := by sorry
