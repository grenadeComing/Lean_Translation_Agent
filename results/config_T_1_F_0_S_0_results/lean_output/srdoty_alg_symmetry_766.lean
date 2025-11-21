import Mathlib

/-!
Any permutation representation `δ : G → Perm n` gives a matrix representation
`ρ : G →* (Matrix n n F)ˣ` by sending `g` to the permutation matrix of `δ g`.
-/

open Matrix

variable {G : Type*} [Group G]
variable {n : Type*} [Fintype n] [DecidableEq n]
variable (F : Type*) [Field F]

/-- The permutation matrix associated to a permutation `σ : Perm n` over the field `F`. -/
def perm_matrix (σ : Perm n) : Matrix n n F := fun i j => if σ j = i then 1 else 0

/-- Given a permutation representation `δ : G → Perm n`, produce the corresponding
matrix representation `G →* (Matrix n n F)ˣ` by sending `g` to the permutation matrix
`perm_matrix (δ g)`. -/
def permutation_representation_to_GL (δ : G → Perm n) : G →* (Matrix n n F)ˣ := by sorry