import Mathlib
open Equiv Equiv.Perm
open Subgroup

/-- Let α=(1,2) and β=(1,2,3) in S3, and let G=<α,β>. Show that G=S3. -/
theorem closure_pair_one_two_eq_top : Subgroup.closure {⟨1, 2⟩, ⟨1, 2, 3⟩} = ⊤ := by sorry
