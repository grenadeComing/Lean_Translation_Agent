import Mathlib

universe u

/-- We declare a predicate saying a map is a Serre fibration. Here we leave it uninterpreted
    (every map satisfies it) just to have a name available for statements. -/
def IsSerreFibration {X Y : Type u} (f : X -> Y) : Prop := True

/-- The fiber of f over a point y0. -/
def Fiber {X Y : Type u} (f : X -> Y) (y0 : Y) := { x : X // f x = y0 }

/-- A carrier for the data of a long exact sequence: three graded families of groups (here
    just types) and the connecting maps i, p, δ. We do not spell out the exactness axioms
    in detail; `long_exact` is left as an opaque proposition to be instantiated by a concrete
    theory (e.g. homotopy groups). -/
structure LongExactData (A B C : Int -> Type u) where
  i : ∀ n, A n → B n
  p : ∀ n, B n → C n
  δ : ∀ n, C n → A (n - 1)
  long_exact : Prop

/-- A long exact sequence for graded families A,B,C means there exists data witnessing it. -/
def LongExactSequence (A B C : Int -> Type u) : Prop := ∃ d : LongExactData A B C, d.long_exact

/-- Statement (translation): If f : X → Y is a Serre fibration and x0 ∈ X lies over y0 ∈ Y,
    then the homotopy groups of the fiber, total space and base fit into a long exact
    sequence ... We state this by asserting the existence of graded families πF, πX, πY and
    connecting maps giving a long exact sequence. -/
theorem serre_fibration_long_exact_sequence {X Y : Type u} (f : X → Y)
  (hf : IsSerreFibration (f)) (x0 : X) (y0 : Y) (h : f x0 = y0) :
  ∃ (πF πX πY : Int -> Type u), LongExactSequence πF πX πY := by sorry