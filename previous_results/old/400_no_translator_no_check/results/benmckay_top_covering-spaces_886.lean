import Mathlib

/-!
A formal statement of the following (van Kampen-style) assertion:

Suppose that X is a path connected and locally simply connected topological space,
with a covering by path connected open sets {X_a}_{a ∈ A}, so that every finite
intersection X_{ab} := X_a ∩ X_b is also path connected. Let π := π_1(X,x_0)
and π_a := π_1(X_a,x_0), and so on. Take a group Γ and group morphisms
π_a → Γ which agree on every π_{ab}, for every a,b. Then there is a unique
group morphism π → Γ extending the given morphisms π_a → Γ.

This file translates that statement to Lean. We do not give a proof; the
statement is ended with `:= by sorry` as required.
-/

open Set

theorem van_kampen_group_morphism_exists_unique
  {X : Type*} [TopologicalSpace X] {x0 : X}
  {A : Type*} (U : A → Set X)
  (hX_path : PathConnectedSpace X)
  (hU_open : ∀ a, IsOpen (U a))
  (hx0_mem : ∀ a, x0 ∈ U a)
  (hU_path : ∀ a, PathConnectedSpace (↥(U a)))
  (hUab_path : ∀ a b, PathConnectedSpace (↥(U a ∩ U b)))
  {Γ : Type*} [Group Γ]
  -- morphisms on the members of the cover (based at x0 viewed as a point of the subtype)
  (φ : ∀ a, FundamentalGroup (↥(U a)) (⟨x0, hx0_mem a⟩ : ↥(U a)) →* Γ)
  -- the (canonical) inclusion-induced maps are provided as data here
  (incl_to_X : ∀ a, FundamentalGroup (↥(U a)) (⟨x0, hx0_mem a⟩ : ↥(U a)) →* FundamentalGroup X x0)
  (incl_inter_left  : ∀ a b, FundamentalGroup (↥(U a ∩ U b)) (⟨x0, And.intro (hx0_mem a) (hx0_mem b)⟩ : ↥(U a ∩ U b))
                       →* FundamentalGroup (↥(U a)) (⟨x0, hx0_mem a⟩ : ↥(U a)))
  (incl_inter_right : ∀ a b, FundamentalGroup (↥(U a ∩ U b)) (⟨x0, And.intro (hx0_mem a) (hx0_mem b)⟩ : ↥(U a ∩ U b))
                       →* FundamentalGroup (↥(U b)) (⟨x0, hx0_mem b⟩ : ↥(U b)))
  -- compatibility on overlaps: the given φ_a agree when precomposed with the inclusion maps
  (compat : ∀ a b,
    (φ a).comp (incl_inter_left a b) = (φ b).comp (incl_inter_right a b)) :
  ∃! (ψ : FundamentalGroup X x0 →* Γ), ∀ a, ψ.comp (incl_to_X a) = φ a := by sorry
