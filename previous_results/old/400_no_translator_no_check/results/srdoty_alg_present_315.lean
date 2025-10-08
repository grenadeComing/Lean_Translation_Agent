import Mathlib

/-!
# Presentation problem
Show that in any group G, elements a, b with a^5 = b^2 = 1 and ba = a^2 b force a = 1.
(This is the key step showing the group with presentation <a,b | a^5 = b^2 = 1, ba = a^2 b>
is in fact isomorphic to Z_2.)
-/

theorem presentation_forces_a_trivial {G : Type _} [Group G] (a b : G)
  (ha : a ^ 5 = 1) (hb : b ^ 2 = 1) (hab : b * a = a ^ 2 * b) : a = 1 := by sorry
