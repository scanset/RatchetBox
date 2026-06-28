# Message Router (subscribe -> handler -> publish engine)

The watermill Router wires subscribers to handler functions to publishers, with middleware, acking, and retries. Register handlers with AddHandler (consume+publish) or AddNoPublisherHandler (consume only); apply cross-cutting middleware with AddMiddleware; start with Run(ctx). Keywords: watermill router handler addhandler addnopublisherhandler addmiddleware run handlerfunc pipeline ack retry event-driven.

## API surface: message/router.go (from watermill, MIT)

```go
32:type HandlerFunc func(msg *Message) ([]*Message, error)
35:type NoPublishHandlerFunc func(msg *Message) error
59:type HandlerMiddleware func(h HandlerFunc) HandlerFunc
62:type RouterPlugin func(*Router) error
65:type PublisherDecorator func(pub Publisher) (Publisher, error)
68:type SubscriberDecorator func(sub Subscriber) (Subscriber, error)
71:type RouterConfig struct {
83:func (c RouterConfig) Validate() error {
88:func NewRouter(config RouterConfig, logger watermill.LoggerAdapter) (*Router, error) {
98:func NewDefaultRouter(logger watermill.LoggerAdapter) *Router {
144:type Router struct {
177:func (r *Router) Logger() watermill.LoggerAdapter {
184:func (r *Router) AddMiddleware(m ...HandlerMiddleware) {
218:func (r *Router) AddPlugin(p ...RouterPlugin) {
226:func (r *Router) AddPublisherDecorators(dec ...PublisherDecorator) {
234:func (r *Router) AddSubscriberDecorators(dec ...SubscriberDecorator) {
241:func (r *Router) Handlers() map[string]HandlerFunc {
252:type DuplicateHandlerNameError struct {
256:func (d DuplicateHandlerNameError) Error() string {
272:func (r *Router) AddHandler(
342:func (r *Router) AddConsumerHandler(
367:func (r *Router) AddNoPublisherHandler(
386:func (r *Router) Run(ctx context.Context) (err error) {
426:func (r *Router) RunHandlers(ctx context.Context) error {
545:func (r *Router) Running() chan struct{} {
553:func (r *Router) IsRunning() bool {
563:func (r *Router) Close() error {
611:func (r *Router) IsClosed() bool {
683:type Handler struct {
691:func (h *Handler) AddMiddleware(m ...HandlerMiddleware) {
702:func (h *Handler) Started() chan struct{} {
709:func (h *Handler) Stop() {
718:func (h *Handler) Stopped() chan struct{} {
882:func (disabledPublisher) Publish(topic string, messages ...*Message) error {
886:func (disabledPublisher) Close() error {

```
