import Mathlib

-- Show that every subset of ℕ (viewed as a subspace of ℝ) is clopen.
-- We state it for the subtype `↥(Set.range (coe : ℕ → ℝ))` (the naturals inside the reals).

theorem Pugh_exercise_2_32a : ∀ t : Set (↥(Set.range (coe : ℕ → ℝ))), IsClopen t := by sorry
