import './bootstrap';
import * as Sentry from '@sentry/browser';
import { OpenFeature } from '@openfeature/web-sdk';
import DevCycleProvider from '@devcycle/openfeature-web-provider';

Sentry.init({
	dsn: 'https://a3f7c1eafb30c25c6eea2ab805300087@o4510768056827904.ingest.us.sentry.io/4510768268705792',
	integrations: [
		Sentry.feedbackIntegration({
			colorScheme: 'system',
			isNameRequired: true,
			isEmailRequired: true,
		}),
	],
	tracesSampleRate: 1.0,
});

const devcycleKey = import.meta.env.VITE_DEVCYCLE_CLIENT_SDK_KEY;

async function initDevCycleFeatureFlags() {
	if (!devcycleKey) {
		console.warn('DevCycle key missing: set VITE_DEVCYCLE_CLIENT_SDK_KEY in your .env');
		return;
	}

	const provider = new DevCycleProvider(devcycleKey);

	await OpenFeature.setContext({
		targetingKey: 'anonymous-user',
	});

	await OpenFeature.setProviderAndWait(provider);
	console.info('DevCycle OpenFeature initialized');
}

void initDevCycleFeatureFlags().catch((err) => {
	console.error('DevCycle initialization failed', err);
});
