import Mathlib

variable {A : Type*} [Fintype A] [DecidableEq A]
variable {G : Type*} [Group G] [Fintype G] [MulAction G A]

/-- Exercise: If a finite group G acts transitively on a finite set A with |A| > 1,
    then there exists an element of G with no fixed points (a derangement). -/
theorem exists_derangement_of_transitive (htrans : ∀ a b : A, ∃ g : G, g • a = b)
  (h_card : Fintype.card A > 1) :
  ∃ g : G, ∀ a : A, g • a ≠ a := by sorry
