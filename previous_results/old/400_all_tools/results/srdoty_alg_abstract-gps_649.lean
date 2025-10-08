import Mathlib

/-!
Translate: Let R be a set with two binary operations + and ·. Show that R is a ring iff:
(1) (R,+) is an abelian group with identity 0;
(2) (R,·) is a monoid with identity 1;
(3) a(b+c)=ab+ac and (b+c)a=ba+ca for all a,b,c∈R.
-/

universe u

structure ring_axioms (R : Type u) where
  add_comm_group : AddCommGroup R
  monoid         : Monoid R
  left_distrib   : ∀ a b c : R, (a * (b + c) : R) = (a * b + a * c : R)
  right_distrib  : ∀ a b c : R, ((b + c) * a : R) = (b * a + c * a : R)

def ring_equiv_axioms (R : Type u) : Ring R ≃ ring_axioms R := by sorry
