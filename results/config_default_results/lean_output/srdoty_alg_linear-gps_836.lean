import Mathlib
open Matrix
open LinearMap
open Subgroup
open scoped Classical in
open scoped MatrixGroups
open Matrix MatrixGroups SpecialLinearGroup

/-- Let F be a field and E(t) = [[1, t], [0, 1]] for t in F. Show that E(s) E(t) = E(s+t) for all s, t in F. -/
theorem SL2_exp_add_field [Field F] (s t : F) :
    !![1, s; 0, 1] * !![1, t; 0, 1] = !![1, s + t; 0, 1] := by sorry