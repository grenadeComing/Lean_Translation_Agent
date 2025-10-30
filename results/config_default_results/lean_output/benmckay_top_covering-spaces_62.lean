import Mathlib

section
variable {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
variable (p : X → Y)

axiom is_covering (p : X → Y) : Prop
axiom evenly_covered (p : X → Y) (U : Set Y) : Prop
axiom fiber_card (p : X → Y) (y : Y) : Cardinal

theorem benmckay_top_covering_spaces_62
  (U : Set Y) (hU : IsOpen U)
  (hUe : evenly_covered (p := p) U) :
  ∃ n : Cardinal, ∀ y ∈ U, fiber_card (p := p) y = n := by
  -- translation placeholder
  sorry

end