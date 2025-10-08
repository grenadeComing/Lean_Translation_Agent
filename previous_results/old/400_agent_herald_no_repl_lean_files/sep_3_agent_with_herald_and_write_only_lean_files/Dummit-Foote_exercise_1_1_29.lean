import Mathlib
open Pointwise

/-- Prove that $A \times B$ is an abelian group if and only if both $A$ and $B$ are abelian. -/
theorem comm_of_prod_comm {A B : Type*} [Group A] [Group B] :
  CommGroup (A × B) ↔ CommGroup A ∧ CommGroup B := by sorry
