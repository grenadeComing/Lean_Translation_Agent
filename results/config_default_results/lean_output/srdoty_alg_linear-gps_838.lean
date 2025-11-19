import Mathlib

/-- Let F be a field and E(t) = [[1, t], [0, 1]] for t in F. Show that E(t)^{-1} = E(-t) for all t in F. -/
theorem SL2_inv_single_extracted [Field F] (t : F) : (!![1, t; 0, 1])⁻¹ = !![1, -t; 0, 1] := by
  sorry