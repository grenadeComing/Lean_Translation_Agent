import Mathlib
open scoped Classical
open Fintype

/-- Prove that if |G|=462 then G is not simple. -/
theorem not_isSimpleGroup_of_card_eq_462 {G : Type*} [Group G] [Fintype G]
    (hG : Fintype.card G = 462) : ¬IsSimpleGroup G := by sorry