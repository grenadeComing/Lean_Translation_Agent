import Mathlib
open Matrix

variable {F : Type*} [Field F]

/-- E(t) = [[1, t], [0, 1]] over a field F. -/
 def E (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j => match i, j with
  | ⟨0, _⟩, ⟨0, _⟩ => (1 : F)
  | ⟨0, _⟩, ⟨1, _⟩ => t
  | ⟨1, _⟩, ⟨0, _⟩ => (0 : F)
  | ⟨1, _⟩, ⟨1, _⟩ => (1 : F)

/-- Show that E(s) * E(t) = E(s + t) for all s, t in F. -/
 theorem E_mul_E (s t : F) : E s * E t = E (s + t) := by
  sorry
