import Mathlib

/-!
Translate: Let R be a set with two binary operations + and ·. Show that R is a ring iff:
(1) (R,+) is an abelian group with identity 0;
(2) (R,·) is a monoid with identity 1;
(3) a(b+c)=ab+ac and (b+c)a=ba+ca for all a,b,c∈R.

This file gives a statement (no proof).
-/

theorem ring_iff_add_comm_group_and_monoid_and_distrib {R : Type*} :
  Nonempty (Ring R) ↔ (Nonempty (AddCommGroup R) ∧ Nonempty (Monoid R) ∧ Nonempty (Distrib R)) := by sorry
