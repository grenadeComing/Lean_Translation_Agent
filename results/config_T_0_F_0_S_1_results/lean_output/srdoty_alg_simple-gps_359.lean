import Mathlib

/-- Predicates describing the standard families appearing in the classification of finite simple groups.
    These are left abstract here (as predicates on finite groups) so that the statement below
    can be formulated cleanly without committing to particular concrete constructions.
-/
variable (IsSimpleGroupPred : ∀ (H : Type _) [_ : Group H] [_ : Fintype H], Prop)
variable (IsAlternatingGroup : ∀ (H : Type _) [_ : Group H] [_ : Fintype H], Prop)
variable (IsSimpleGroupOfLieType : ∀ (H : Type _) [_ : Group H] [_ : Fintype H], Prop)
variable (IsClassicalLieType : ∀ (H : Type _) [_ : Group H] [_ : Fintype H], Prop)
variable (IsExceptionalOrTwistedLieType : ∀ (H : Type _) [_ : Group H] [_ : Fintype H], Prop)
variable (IsSporadicSimpleGroup : ∀ (H : Type _) [_ : Group H] [_ : Fintype H], Prop)

open Nat

/-- Classification of finite simple groups (statement only).
    For a finite simple group G, one of the following holds:
    1) G is cyclic of prime order.
    2) G is an alternating group of degree ≥ 5.
    3) G is a (finite) simple group of Lie type.
    4) G lies in the classical Lie-type families.
    5) G is an exceptional or twisted Lie-type group (including the Tits group).
    6) G is one of the 26 sporadic simple groups.
-/
theorem classification_of_finite_simple_groups {G : Type _} [Group G] [Fintype G]
  (h_simple : IsSimpleGroupPred G) :
  -- (1) cyclic of prime order
  (∃ p : ℕ, Nat.Prime p ∧ Fintype.card (G) = p) ∨
  -- (2) an alternating group of degree at least 5
  (∃ (H : Type _) [_ : Group H] [_ : Fintype H], IsAlternatingGroup H ∧ Nonempty (G ≃* H)) ∨
  -- (3) a simple group of Lie type (this includes the classical and exceptional/twisted families)
  (∃ (H : Type _) [_ : Group H] [_ : Fintype H], IsSimpleGroupOfLieType H ∧ Nonempty (G ≃* H)) ∨
  -- (4) one of the classical families (PSL, PSU, PSp, PΩ, ...)
  (∃ (H : Type _) [_ : Group H] [_ : Fintype H], IsClassicalLieType H ∧ Nonempty (G ≃* H)) ∨
  -- (5) one of the exceptional or twisted groups of Lie type (including the Tits group)
  (∃ (H : Type _) [_ : Group H] [_ : Fintype H], IsExceptionalOrTwistedLieType H ∧ Nonempty (G ≃* H)) ∨
  -- (6) one of the 26 sporadic simple groups
  (∃ (H : Type _) [_ : Group H] [_ : Fintype H], IsSporadicSimpleGroup H ∧ Nonempty (G ≃* H)) := by sorry