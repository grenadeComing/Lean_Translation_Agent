import Mathlib

/-!
A formal statement of the following (Van Kampen-style) assertion:

Suppose that X is a path connected and locally simply connected topological space,
with a covering by path connected open sets {X_a}_{a ∈ A}, so that every finite
intersection X_{ab} := X_a ∩ X_b is also path connected. Let π := π_1(X,x0)
and π_a := π_1(X_a,x0), and so on. Take a group Γ and group morphisms
π_a → Γ which agree on every π_{ab}, for every a,b. Then there is a unique
group morphism π → Γ extending the given morphisms π_a → Γ.

The following is an algebraic formulation of the concluding universal property:
we assume groups π, the π_a and the π_{ab} together with the inclusion
homomorphisms making the usual diagram commute into π, and we assert the
unique extension property for any compatible family of maps to Γ.
-/

theorem van_kampen_covering_spaces_extension {A : Type _} {π : Type _} [Group π]
  {π_a : A → Type _} [∀ a, Group (π_a a)]
  {π_ab : A → A → Type _} [∀ a b, Group (π_ab a b)]
  (incl_a : ∀ a, (π_a a) →* π)
  (incl_ab_a : ∀ a b, (π_ab a b) →* (π_a a))
  (incl_ab_b : ∀ a b, (π_ab a b) →* (π_a b))
  -- the inclusions into π commute with the inclusions from the overlaps:
  (h_comm_into_π : ∀ a b, (incl_a a).comp (incl_ab_a a b) = (incl_a b).comp (incl_ab_b a b))
  (Γ : Type _) [Group Γ]
  (phi : ∀ a, (π_a a) →* Γ)
  -- compatibility on the overlaps:
  (h_compat : ∀ a b, (phi a).comp (incl_ab_a a b) = (phi b).comp (incl_ab_b a b)) :
  ∃! (Φ : π →* Γ), ∀ a, (Φ).comp (incl_a a) = (phi a) := by sorry
