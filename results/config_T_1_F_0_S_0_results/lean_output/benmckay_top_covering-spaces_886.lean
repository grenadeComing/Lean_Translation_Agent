import Mathlib

open Topology

lemma van_kampen_extension_of_group_morphisms
  {X : Type*} [TopologicalSpace X] {x0 : X}
  {A : Type*} (U : A → Set X)
  (hU_open : ∀ a, IsOpen (U a))
  (hU_cover : (⋃ a, U a) = univ)
  [PathConnectedSpace X] [LocallySimplyConnectedSpace X]
  (hU_conn : ∀ a, PathConnectedSpace (U a))
  (hU_inter_conn : ∀ a b, PathConnectedSpace (U a ∩ U b))
  (Γ : Type*) [Group Γ]
  (incl_a : ∀ a, FundamentalGroup (U a) x0 →* FundamentalGroup X x0)
  (incl_ab_a : ∀ a b, FundamentalGroup (U a ∩ U b) x0 →* FundamentalGroup (U a) x0)
  (incl_ab_b : ∀ a b, FundamentalGroup (U a ∩ U b) x0 →* FundamentalGroup (U b) x0)
  (phi : ∀ a, FundamentalGroup (U a) x0 →* Γ)
  (h_basepoint : ∀ a, x0 ∈ U a)
  (h_compat : ∀ a b, (phi a).comp (incl_ab_a a b) = (phi b).comp (incl_ab_b a b)) :
  ∃! (Φ : FundamentalGroup X x0 →* Γ), ∀ a, Φ.comp (incl_a a) = phi a := by sorry
