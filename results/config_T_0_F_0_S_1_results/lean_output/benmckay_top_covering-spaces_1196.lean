import Mathlib

/-- A very small set of declarations to state the long exact sequence of homotopy
groups associated to a Serre fibration. This file only gives the statement,
not a proof or full formalization of homotopy groups or exactness. -/

universe u

-- We work with raw types; a bundled topological / pointed space setup could be
-- used in a full development.
class IsSerreFibration {X Y : Type u} (f : X → Y) : Prop

/-- Fibre of a map f over a point y0. -/
def fibre {X Y : Type u} (f : X → Y) (y0 : Y) : Type u := { x : X // f x = y0 }

/-- Homotopy groups π_n(X, x0). We leave them abstract here. -/
constant π (n : ℕ) (X : Type u) (x0 : X) : Type u

/-- Induced map on homotopy groups by a pointed map. -/
constant π_map (n : ℕ) {A B : Type u} (g : A → B) (a0 : A) (b0 : B) (hg : g a0 = b0) :
  π n A a0 → π n B b0

/-- The connecting homomorphism in the long exact sequence. -/
constant connecting_map (n : ℕ) {X Y : Type u} (f : X → Y) (x0 : X) (y0 : Y) (hf : f x0 = y0) :
  π n Y y0 → π (n - 1) (fibre f y0) x0

/-- A minimal (existential) encoding of a long exact sequence of pointed groups
indexed by ℕ. The exactness conditions are omitted here: we only assert the
existence of the standard three families of maps (inclusion, projection,
connecting) which one expects for the fibre sequence. -/
def long_exact_sequence (A B C : ℕ → Type u) : Prop :=
  ∃ (i : ∀ n, A n → B n) (p : ∀ n, B n → C n) (δ : ∀ n, C n → A (n - 1)), True

/-- Statement: for a Serre fibration f : X → Y and chosen basepoints x0 ∈ X,
y0 ∈ Y with f x0 = y0, the obvious maps on homotopy groups assemble into a
long exact sequence ... -> π_n(fibre) -> π_n(X) -> π_n(Y) -> π_{n-1}(fibre) -> ... -/
theorem serre_fibration_long_exact_sequence {X Y : Type u} {f : X → Y} {x0 : X} {y0 : Y}
  (hf : IsSerreFibration f) (h : f x0 = y0) :
  long_exact_sequence (fun n => π n (fibre f y0) x0)
                      (fun n => π n X x0)
                      (fun n => π n Y y0) := by sorry
