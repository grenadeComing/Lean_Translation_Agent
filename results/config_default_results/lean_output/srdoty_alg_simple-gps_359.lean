import Mathlib

universe u

/-- Predicates naming the families occurring in the classification. These are
    uninterpreted constants: we only state the classification, not provide
    constructions for these families in Mathlib. -/
constant IsAlternatingGroup : ∀ {H : Type u} [Group H], ℕ → Prop
constant IsLieType : ∀ {H : Type u} [Group H], Prop
constant IsSporadicGroup : ∀ {H : Type u} [Group H], Fin 26 → Prop

/-- Classification of finite simple groups (statement only, no proof).
    Every finite simple group is isomorphic to one of the following:
    (1) a cyclic group of prime order;
    (2) an alternating group of degree at least 5;
    (3) a simple group of Lie type (classical or exceptional/twisted);
    (4) one of the 26 sporadic simple groups.
-/
theorem classification_of_finite_simple_groups :
  ∀ (G : Type u) [Group G] [Fintype G], IsSimpleGroup G →
    (∃ (p : ℕ), Nat.Prime p ∧ Nonempty (G ≃* Multiplicative (ZMod p))) ∨
    (∃ (n : ℕ) (hn : 5 ≤ n) (H : Type u) [instH : Group H] [fH : Fintype H],
        IsAlternatingGroup n ∧ Nonempty (G ≃* H)) ∨
    (∃ (H : Type u) [instH : Group H] [fH : Fintype H],
        IsLieType ∧ Nonempty (G ≃* H)) ∨
    (∃ (i : Fin 26) (H : Type u) [instH : Group H] [fH : Fintype H],
        IsSporadicGroup i ∧ Nonempty (G ≃* H)) := by sorry