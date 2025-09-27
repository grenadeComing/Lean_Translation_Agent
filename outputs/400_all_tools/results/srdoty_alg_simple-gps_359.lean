import Mathlib

/-!
Classification of finite simple groups (informal translation).
We don't prove the classification here; we introduce placeholder types for
alternating, Lie-type, and sporadic groups, and state the classification
as a theorem ending with `:= by sorry`.
-/

-- Opaque placeholder types for the named families.
axiom AlternatingGroupType : ℕ → Type
axiom AlternatingGroup_group : ∀ n, Group (AlternatingGroupType n)
attribute [instance] AlternatingGroup_group

axiom LieTypeGroup : String → Type
axiom LieTypeGroup_group : ∀ s, Group (LieTypeGroup s)
attribute [instance] LieTypeGroup_group

axiom SporadicGroup : Fin 26 → Type
axiom SporadicGroup_group : ∀ i, Group (SporadicGroup i)
attribute [instance] SporadicGroup_group

/-- Classification families for a finite simple group `G`. -/
inductive SimpleGroupFamily (G : Type _) [Group G] : Prop where
| cyclic_prime (p : ℕ) (hp : Nat.Prime p) (e : G ≃* Multiplicative (ZMod p)) : SimpleGroupFamily G
| alternating (n : ℕ) (hn : 5 ≤ n) (e : G ≃* AlternatingGroupType n) : SimpleGroupFamily G
| lie_type (label : String) (e : G ≃* LieTypeGroup label) : SimpleGroupFamily G
| sporadic (i : Fin 26) (e : G ≃* SporadicGroup i) : SimpleGroupFamily G

/-- Every finite simple group belongs to one of the families in the classification.
This is a translation of the classical statement; we do not provide a proof here. -/
theorem classification_of_finite_simple_groups {G : Type _} [Group G] [Fintype G] (h : IsSimpleGroup G) :
  SimpleGroupFamily G := by sorry
