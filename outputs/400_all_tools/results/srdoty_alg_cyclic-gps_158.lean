import Mathlib

/-!
Any infinite cyclic additive group is isomorphic to Int.
Any finite cyclic additive group is isomorphic to ZMod n for some n > 0.
-/

theorem infinite_cyclic_add_group_is_Int {G : Type _} [AddGroup G] (g : G)
  (hg : ∀ x : G, ∃ k : Int, x = k • g) (h_inf : Infinite G) :
  Nonempty (G ≃+ Int) := by sorry

theorem finite_cyclic_add_group_is_ZMod {G : Type _} [AddGroup G] [Fintype G] (g : G)
  (hg : ∀ x : G, ∃ k : Int, x = k • g) :
  ∃ n : ℕ, 0 < n ∧ Nonempty (G ≃+ ZMod n) := by sorry
