import Mathlib

/-
We represent 2x2 real matrices as a small structure and define the subset
G = { [[a, -b],[b, a]] : a b ∈ ℝ } and G' = G \ {0}.
We assert that G' (as a subtype) carries a group structure under matrix multiplication.
The proof is omitted (by sorry) as requested.
-/

structure M22 where
  a : ℝ
  b : ℝ
  c : ℝ
  d : ℝ

instance : Inhabited M22 := ⟨M22.mk 0 0 0 0⟩

/-- The special form matrix [[a, -b],[b, a]] -/
def of_ab (a b : ℝ) : M22 := ⟨a, -b, b, a⟩

def zero_mat : M22 := of_ab 0 0

def is_form (M : M22) : Prop := ∃ a b : ℝ, M = of_ab a b

def G : Set M22 := { M | is_form M }

def G' : Set M22 := G \ { zero_mat }

/-- The subtype of matrices of the required form, excluding the zero matrix. -/
def G'_subtype := { M : M22 // is_form M ∧ M ≠ zero_mat }

/-- G' is a group under matrix multiplication (statement only; proof omitted). -/
noncomputable def G'_group : Group G'_subtype := by sorry
