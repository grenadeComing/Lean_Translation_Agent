import Mathlib

/-- If G is a nonempty subset of a group closed under multiplication and inverses,
then the unit (1) belongs to G. This formalizes the usual matrix-group argument
by working in an arbitrary group; it applies in particular to any group of
invertible matrices. -/
theorem matrix_group_contains_one {α : Type _} [Group α] {G : Set α}
  (h_nonempty : G.Nonempty)
  (h_mul : ∀ a b, a ∈ G → b ∈ G → a * b ∈ G)
  (h_inv : ∀ a, a ∈ G → a⁻¹ ∈ G) :
  (1 : α) ∈ G := by sorry
